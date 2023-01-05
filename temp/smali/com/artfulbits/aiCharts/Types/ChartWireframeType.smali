.class public Lcom/artfulbits/aiCharts/Types/ChartWireframeType;
.super Lcom/artfulbits/aiCharts/Types/a;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/a;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->b:Landroid/graphics/Paint;

    sget v0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->FLAG_SUPPORT_3D:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->FLAG_Z_AXIS:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->m_flags:I

    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/artfulbits/aiCharts/Types/a;->draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V

    return-void
.end method

.method public bridge synthetic drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/artfulbits/aiCharts/Types/a;->drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V

    return-void
.end method

.method protected drawPolygon(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;[FII)V
    .locals 4

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Chart:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getPalette()Lcom/artfulbits/aiCharts/Base/ChartPalette;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/artfulbits/aiCharts/Base/ChartPalette;->getColor(I)I

    move-result v0

    iget-boolean v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v1, p2, p3, v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->drawWireframe3D([FII)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->a:Landroid/graphics/Path;

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    :goto_1
    if-ge v0, p3, :cond_1

    mul-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->a:Landroid/graphics/Path;

    aget v3, p2, v1

    add-int/lit8 v1, v1, 0x2

    aget v1, p2, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Graph:Lcom/artfulbits/aiCharts/Base/ChartGraph;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartGraph;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Types/ChartWireframeType;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public bridge synthetic getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->getYRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    return-void
.end method

.method public bridge synthetic getZRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/artfulbits/aiCharts/Types/a;->getZRange(Lcom/artfulbits/aiCharts/Base/ChartSeries;Lcom/artfulbits/aiCharts/Base/DoubleRange;)V

    return-void
.end method

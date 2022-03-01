.class public Lcom/artfulbits/aiCharts/Types/ChartPointType;
.super Lcom/artfulbits/aiCharts/Base/ChartType;


# static fields
.field public static final HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/artfulbits/aiCharts/Types/ChartLineType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartPointType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartType;-><init>()V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPointType;->a:Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPointType;->m_flags:I

    sget v1, Lcom/artfulbits/aiCharts/Types/ChartPointType;->FLAG_SUPPORT_3D:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPointType;->m_flags:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPointType;->a:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPointType;->a:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 0

    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPointType;->m_iconPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/artfulbits/aiCharts/Types/ChartPointType;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;Landroid/graphics/Paint;Z)V

    return-void
.end method

.method protected drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getMarkerSize()Landroid/graphics/Point;

    move-result-object v9

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getShowLabel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getFormatedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getHLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v3

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getVLabelAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v4

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getLabelPadding()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v7

    :goto_0
    if-nez v8, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Types/ChartPointType;->a:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getBackColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/artfulbits/aiCharts/Types/ChartPointType;->a:Landroid/graphics/drawable/ShapeDrawable;

    :cond_0
    const/4 v10, 0x0

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v10}, Lcom/artfulbits/aiCharts/Types/ChartPointType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Landroid/graphics/PointF;Ljava/lang/String;Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Point;F)V

    return-void

    :cond_1
    move-object v5, v7

    move-object v4, v7

    move-object v3, v7

    move-object v2, v7

    goto :goto_0
.end method

.method public drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 12

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getPointsCache()Ljava/util/List;

    move-result-object v0

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    iget-object v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMinimum()D

    move-result-wide v1

    iget-object v3, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->ActualXAxis:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v3

    invoke-virtual {v3}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getVisibleMaximum()D

    move-result-wide v3

    iget-object v5, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v8, Lcom/artfulbits/aiCharts/Types/ChartPointType;->HIT_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v5, v8}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Types/ChartPointType;->getVisibleFrom(Ljava/util/List;DDII)I

    move-result v5

    invoke-static/range {v0 .. v6}, Lcom/artfulbits/aiCharts/Types/ChartPointType;->getVisibleTo(Ljava/util/List;DDII)I

    move-result v2

    :goto_0
    if-gt v5, v2, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3, v7}, Lcom/artfulbits/aiCharts/Types/ChartPointType;->getMarkerPoint(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;ILandroid/graphics/PointF;)V

    iget-boolean v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->is3d:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Area:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getView3D()Lcom/artfulbits/aiCharts/Base/View3D;

    move-result-object v1

    iget v3, v7, Landroid/graphics/PointF;->x:F

    iget v4, v7, Landroid/graphics/PointF;->y:F

    iget v6, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Front:F

    iget v10, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Back:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v6, v10

    invoke-virtual {v1, v3, v4, v6, v7}, Lcom/artfulbits/aiCharts/Base/View3D;->project(FFFLandroid/graphics/PointF;)Z

    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {p0, p1, v1, v7}, Lcom/artfulbits/aiCharts/Types/ChartPointType;->drawMarker(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;Lcom/artfulbits/aiCharts/Base/ChartPoint;Landroid/graphics/PointF;)V

    iget-boolean v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->IsRegionEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v3, v7, Landroid/graphics/PointF;->y:F

    int-to-float v4, v8

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v1, v3, v4, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    iget-object v1, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Bounds:Landroid/graphics/Rect;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v9, v1, v3}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->addRegion(Landroid/graphics/Path;Landroid/graphics/Rect;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

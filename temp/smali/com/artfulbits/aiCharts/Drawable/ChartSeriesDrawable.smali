.class public Lcom/artfulbits/aiCharts/Drawable/ChartSeriesDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private a:Lcom/artfulbits/aiCharts/Base/ChartSeries;


# direct methods
.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartSeries;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Drawable/ChartSeriesDrawable;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Drawable/ChartSeriesDrawable;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Drawable/ChartSeriesDrawable;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Drawable/ChartSeriesDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->create(Landroid/graphics/Canvas;Lcom/artfulbits/aiCharts/Base/ChartSeries;Landroid/graphics/Rect;)Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Drawable/ChartSeriesDrawable;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Drawable/ChartSeriesDrawable;->a:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawMarkers(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

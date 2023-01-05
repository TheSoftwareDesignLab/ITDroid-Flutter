.class public final Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconDrawable"
.end annotation


# instance fields
.field private final a:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;-><init>(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;II)V

    return-void
.end method

.method public constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;II)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;->a:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    iput p2, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;->b:I

    iput p3, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;->c:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;->a:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    instance-of v1, v1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;->a:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getSeries()Lcom/artfulbits/aiCharts/Base/ChartSeries;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getType()Lcom/artfulbits/aiCharts/Base/ChartType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;->a:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    invoke-virtual {v0, p1, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartType;->drawIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;->a:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    instance-of v1, v1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;->a:Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    goto :goto_0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;->c:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeries$IconDrawable;->b:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

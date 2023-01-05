.class public final Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;
.super Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TextCell"
.end annotation


# instance fields
.field private final c:Lcom/artfulbits/aiCharts/Base/n;

.field private d:I

.field private synthetic e:Lcom/artfulbits/aiCharts/Base/ChartLegendItem;


# direct methods
.method protected constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->e:Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;-><init>()V

    new-instance v0, Lcom/artfulbits/aiCharts/Base/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/artfulbits/aiCharts/Base/n;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    sget-object v0, Lcom/artfulbits/aiCharts/Enums/Alignment;->Near:Lcom/artfulbits/aiCharts/Enums/Alignment;

    sget-object v1, Lcom/artfulbits/aiCharts/Enums/Alignment;->Center:Lcom/artfulbits/aiCharts/Enums/Alignment;

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/a;->a(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->d:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    iput-object p2, v0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->e:Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    invoke-static {v1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->a(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;)Lcom/artfulbits/aiCharts/Base/ChartLegend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, v0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->d:I

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v0, Lcom/artfulbits/aiCharts/Base/n;->e:I

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    invoke-static {p2, v2, v3, v1, v0}, Lcom/artfulbits/aiCharts/Base/a;->a(Landroid/graphics/Rect;FFILandroid/graphics/RectF;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    invoke-virtual {v0, p1}, Lcom/artfulbits/aiCharts/Base/n;->a(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget-object v2, v0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/n;->c:Landroid/graphics/RectF;

    invoke-static {p2, v2, v3, v1, v0}, Lcom/artfulbits/aiCharts/Base/a;->a(Landroid/graphics/Rect;FFILandroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public final getHorizontalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->d:I

    invoke-static {}, Lcom/artfulbits/aiCharts/Enums/Alignment;->values()[Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v1

    and-int/lit8 v0, v0, 0xf

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerticalAlignment()Lcom/artfulbits/aiCharts/Enums/Alignment;
    .locals 2

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->d:I

    invoke-static {}, Lcom/artfulbits/aiCharts/Enums/Alignment;->values()[Lcom/artfulbits/aiCharts/Enums/Alignment;

    move-result-object v1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    aget-object v0, v1, v0

    return-object v0
.end method

.method protected final measure(Landroid/graphics/Point;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->e:Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    invoke-static {v1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->a(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;)Lcom/artfulbits/aiCharts/Base/ChartLegend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, v0, Lcom/artfulbits/aiCharts/Base/n;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/n;->a()V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v1, v1, Lcom/artfulbits/aiCharts/Base/n;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public final setAlignment(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/artfulbits/aiCharts/Base/a;->a(Lcom/artfulbits/aiCharts/Enums/Alignment;Lcom/artfulbits/aiCharts/Enums/Alignment;)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->d:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->e:Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->invalidate(Z)V

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->c:Lcom/artfulbits/aiCharts/Base/n;

    iput-object p1, v0, Lcom/artfulbits/aiCharts/Base/n;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$TextCell;->e:Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->invalidate(Z)V

    :cond_0
    return-void
.end method

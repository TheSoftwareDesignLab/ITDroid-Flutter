.class public final Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;
.super Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartLegendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DrawableCell"
.end annotation


# instance fields
.field private c:Landroid/graphics/drawable/Drawable;

.field private synthetic d:Lcom/artfulbits/aiCharts/Base/ChartLegendItem;


# direct methods
.method protected constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartLegendItem;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->d:Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$Cell;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->c:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->c:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method


# virtual methods
.method protected final draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->c:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v2

    sub-int v5, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected final measure(Landroid/graphics/Point;)V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public final setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartLegendItem$DrawableCell;->d:Lcom/artfulbits/aiCharts/Base/ChartLegendItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartLegendItem;->invalidate(Z)V

    return-void
.end method

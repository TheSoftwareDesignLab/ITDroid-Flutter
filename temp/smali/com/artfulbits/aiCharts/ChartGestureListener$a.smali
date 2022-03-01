.class final Lcom/artfulbits/aiCharts/ChartGestureListener$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/ChartGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/Scroller;

.field private b:I

.field private c:I

.field private d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

.field private e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

.field private synthetic f:Lcom/artfulbits/aiCharts/ChartGestureListener;


# direct methods
.method public constructor <init>(Lcom/artfulbits/aiCharts/ChartGestureListener;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->f:Lcom/artfulbits/aiCharts/ChartGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->b:I

    iput v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->c:I

    iput-object v1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iput-object v1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a:Landroid/widget/Scroller;

    return-void
.end method

.method private static a(FLcom/artfulbits/aiCharts/Base/ChartAxisScale;)I
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomSize()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealSize()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomSize()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;I)I
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomSize()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomPosition()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealMinimum()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealSize()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomSize()D

    move-result-wide v4

    sub-double/2addr v2, v4

    int-to-double v4, p1

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;II)V
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomSize()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealMaximum()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealMinimum()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getZoomSize()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->getRealMinimum()D

    move-result-wide v2

    int-to-double v4, p1

    mul-double/2addr v0, v4

    int-to-double v4, p2

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->setZoomPosition(D)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    iput-object v2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iput-object v2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iput v1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->b:I

    iput v1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->c:I

    return-void
.end method

.method public final a(Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;FF)V
    .locals 9

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a(FLcom/artfulbits/aiCharts/Base/ChartAxisScale;)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->b:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget v1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->b:I

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;I)I

    move-result v1

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v0

    iput-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-static {v0, v2}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a(FLcom/artfulbits/aiCharts/Base/ChartAxisScale;)I

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->c:I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget v2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->c:I

    invoke-static {v0, v2}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;I)I

    move-result v2

    :goto_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a:Landroid/widget/Scroller;

    float-to-int v3, p3

    float-to-int v4, p4

    iget v6, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->b:I

    iget v8, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->c:I

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->f:Lcom/artfulbits/aiCharts/ChartGestureListener;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_chart:Lcom/artfulbits/aiCharts/ChartView;

    invoke-virtual {v0, p0}, Lcom/artfulbits/aiCharts/ChartView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    move v1, v5

    goto :goto_0
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget v2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->b:I

    invoke-static {v0, v1, v2}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;II)V

    :cond_0
    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget-object v1, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->c:I

    invoke-static {v0, v1, v2}, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;II)V

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/ChartGestureListener$a;->f:Lcom/artfulbits/aiCharts/ChartGestureListener;

    iget-object v0, v0, Lcom/artfulbits/aiCharts/ChartGestureListener;->m_chart:Lcom/artfulbits/aiCharts/ChartView;

    invoke-virtual {v0, p0}, Lcom/artfulbits/aiCharts/ChartView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

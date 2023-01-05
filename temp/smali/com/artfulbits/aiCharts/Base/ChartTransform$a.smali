.class final Lcom/artfulbits/aiCharts/Base/ChartTransform$a;
.super Lcom/artfulbits/aiCharts/Base/ChartTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

.field private final f:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;)V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartTransform;-><init>()V

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iput-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->f:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->a:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->b:F

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->c:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->d:F

    return-void
.end method


# virtual methods
.method public final getPoint(DDLandroid/graphics/PointF;)V
    .locals 6

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->a:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v2, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v2

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->b:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p5, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->c:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->f:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v2, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v2

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->d:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p5, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final getX(FF)D
    .locals 3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->a:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->b:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->coefficientToValue(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getY(FF)D
    .locals 3

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->f:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->c:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;->d:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->coefficientToValue(D)D

    move-result-wide v0

    return-wide v0
.end method

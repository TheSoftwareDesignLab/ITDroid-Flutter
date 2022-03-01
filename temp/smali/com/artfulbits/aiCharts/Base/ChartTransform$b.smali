.class final Lcom/artfulbits/aiCharts/Base/ChartTransform$b;
.super Lcom/artfulbits/aiCharts/Base/ChartTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

.field private final e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;)V
    .locals 3

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartTransform;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->b:F

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->c:F

    iput-object p2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    iput-object p3, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    return-void
.end method

.method public static a(Lcom/artfulbits/aiCharts/Base/ChartAxisScale;D)F
    .locals 6

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual {p0, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public final getPoint(DDLandroid/graphics/PointF;)V
    .locals 6

    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget-object v4, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v4, p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->e:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v1, p3, p4}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->valueToCoefficient(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a:F

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->c:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p5, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->b:F

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->c:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p5, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final getX(FF)D
    .locals 4

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->b:F

    sub-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->d:Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    invoke-virtual {v2, v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxisScale;->coefficientToValue(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getY(FF)D
    .locals 4

    iget v0, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->a:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    iget v2, p0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;->b:F

    sub-float v2, p2, v2

    float-to-double v2, v2

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.class public Lcom/artfulbits/aiCharts/Types/ChartDoughnutType;
.super Lcom/artfulbits/aiCharts/Types/ChartPieType;


# static fields
.field public static final INNER_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "doughnut-inner_radius"

    const-class v1, Lcom/artfulbits/aiCharts/Types/ChartDoughnutType;

    const-class v2, Ljava/lang/Float;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;->register(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    move-result-object v0

    sput-object v0, Lcom/artfulbits/aiCharts/Types/ChartDoughnutType;->INNER_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Types/ChartPieType;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartDoughnutType;->a:F

    return-void
.end method


# virtual methods
.method protected computeSectorPath(Landroid/graphics/RectF;FFLandroid/graphics/Path;)V
    .locals 3

    iget v0, p0, Lcom/artfulbits/aiCharts/Types/ChartDoughnutType;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->computeSectorPath(Landroid/graphics/RectF;FFLandroid/graphics/Path;)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/artfulbits/aiCharts/Types/ChartDoughnutType;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x1

    invoke-virtual {p4, p1, p2, p3, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    add-float v0, p2, p3

    neg-float v1, p3

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    goto :goto_0
.end method

.method public draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
    .locals 2

    iget-object v0, p1, Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;->Series:Lcom/artfulbits/aiCharts/Base/ChartSeries;

    sget-object v1, Lcom/artfulbits/aiCharts/Types/ChartDoughnutType;->INNER_RADIUS:Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getAttribute(Lcom/artfulbits/aiCharts/Base/ChartCustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/artfulbits/aiCharts/Types/ChartDoughnutType;->a:F

    invoke-super {p0, p1}, Lcom/artfulbits/aiCharts/Types/ChartPieType;->draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V

    return-void
.end method

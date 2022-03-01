.class public abstract Lcom/artfulbits/aiCharts/Base/ChartTransform;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Base/ChartTransform$1;,
        Lcom/artfulbits/aiCharts/Base/ChartTransform$a;,
        Lcom/artfulbits/aiCharts/Base/ChartTransform$b;,
        Lcom/artfulbits/aiCharts/Base/ChartTransform$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/artfulbits/aiCharts/Base/ChartArea;)Lcom/artfulbits/aiCharts/Base/ChartTransform;
    .locals 4

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getSeriesBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getDefaultYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartTransform;->create(Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;)Lcom/artfulbits/aiCharts/Base/ChartTransform;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/artfulbits/aiCharts/Base/ChartSeries;)Lcom/artfulbits/aiCharts/Base/ChartTransform;
    .locals 4

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->a()Lcom/artfulbits/aiCharts/Base/ChartArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getCoordinateSystem()Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;

    move-result-object v1

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/Base/ChartArea;->getSeriesBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getActualXAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v2

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->getActualYAxis()Lcom/artfulbits/aiCharts/Base/ChartAxis;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/artfulbits/aiCharts/Base/ChartTransform;->create(Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;)Lcom/artfulbits/aiCharts/Base/ChartTransform;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;)Lcom/artfulbits/aiCharts/Base/ChartTransform;
    .locals 3

    sget-object v0, Lcom/artfulbits/aiCharts/Base/ChartTransform$1;->a:[I

    invoke-virtual {p0}, Lcom/artfulbits/aiCharts/Enums/CoordinateSystem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartTransform$c;

    invoke-direct {v0}, Lcom/artfulbits/aiCharts/Base/ChartTransform$c;-><init>()V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartTransform$b;-><init>(Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;

    invoke-virtual {p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v1

    invoke-virtual {p3}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->getScale()Lcom/artfulbits/aiCharts/Base/ChartAxisScale;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/artfulbits/aiCharts/Base/ChartTransform$a;-><init>(Landroid/graphics/Rect;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;Lcom/artfulbits/aiCharts/Base/ChartAxisScale;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract getPoint(DDLandroid/graphics/PointF;)V
.end method

.method public abstract getX(FF)D
.end method

.method public abstract getY(FF)D
.end method

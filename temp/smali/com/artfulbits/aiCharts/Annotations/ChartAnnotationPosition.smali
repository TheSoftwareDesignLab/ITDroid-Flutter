.class public abstract Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;,
        Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$c;,
        Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absolute(Landroid/graphics/PointF;)Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;
    .locals 1

    new-instance v0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;

    invoke-direct {v0, p0}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;-><init>(Landroid/graphics/PointF;)V

    return-object v0
.end method

.method public static absoluteByArea(Landroid/graphics/PointF;Ljava/lang/String;)Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;
    .locals 2

    new-instance v0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;-><init>(Landroid/graphics/PointF;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static absoluteByLegend(Landroid/graphics/PointF;Ljava/lang/String;)Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;
    .locals 2

    new-instance v0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$a;-><init>(Landroid/graphics/PointF;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static relativeToArea(Ljava/lang/String;DD)Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;
    .locals 6

    new-instance v0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;-><init>(Ljava/lang/String;DD)V

    return-object v0
.end method

.method public static relativeToSeries(Ljava/lang/String;I)Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;
    .locals 1

    new-instance v0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$c;

    invoke-direct {v0, p0, p1}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$c;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method protected abstract getPin(Lcom/artfulbits/aiCharts/Base/ChartEngine;Landroid/graphics/PointF;)V
.end method

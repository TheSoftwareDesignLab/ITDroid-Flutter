.class final Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;
.super Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:D

.field private final c:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DD)V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition;-><init>()V

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->b:D

    iput-wide p4, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->c:D

    return-void
.end method


# virtual methods
.method protected final getPin(Lcom/artfulbits/aiCharts/Base/ChartEngine;Landroid/graphics/PointF;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartArea;

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p2, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->getAreas()Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartNamedCollection;->get(Ljava/lang/String;)Lcom/artfulbits/aiCharts/Base/o;

    move-result-object v0

    check-cast v0, Lcom/artfulbits/aiCharts/Base/ChartArea;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/artfulbits/aiCharts/Base/ChartTransform;->create(Lcom/artfulbits/aiCharts/Base/ChartArea;)Lcom/artfulbits/aiCharts/Base/ChartTransform;

    move-result-object v0

    iget-wide v1, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->b:D

    iget-wide v3, p0, Lcom/artfulbits/aiCharts/Annotations/ChartAnnotationPosition$b;->c:D

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/artfulbits/aiCharts/Base/ChartTransform;->getPoint(DDLandroid/graphics/PointF;)V

    goto :goto_1
.end method

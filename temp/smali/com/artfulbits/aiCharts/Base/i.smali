.class final Lcom/artfulbits/aiCharts/Base/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    iget-wide v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iget-wide v2, p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    iget-wide v2, p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;->a:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

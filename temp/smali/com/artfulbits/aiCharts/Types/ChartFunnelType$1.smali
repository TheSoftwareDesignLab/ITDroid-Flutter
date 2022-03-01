.class final Lcom/artfulbits/aiCharts/Types/ChartFunnelType$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artfulbits/aiCharts/Types/ChartFunnelType;->draw(Lcom/artfulbits/aiCharts/Base/ChartRenderArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field private synthetic a:I


# direct methods
.method constructor <init>(Lcom/artfulbits/aiCharts/Types/ChartFunnelType;I)V
    .locals 0

    iput p2, p0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartPoint;

    iget v0, p0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$1;->a:I

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v0

    iget v2, p0, Lcom/artfulbits/aiCharts/Types/ChartFunnelType$1;->a:I

    invoke-virtual {p2, v2}, Lcom/artfulbits/aiCharts/Base/ChartPoint;->getY(I)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

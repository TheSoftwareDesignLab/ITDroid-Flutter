.class final Lcom/artfulbits/aiCharts/Base/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ChartAxis$LabelsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateLabels(Lcom/artfulbits/aiCharts/Base/ChartAxis;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artfulbits/aiCharts/Base/ChartAxis;",
            "Ljava/util/List",
            "<",
            "Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->isPrimaryAxis()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->b(Lcom/artfulbits/aiCharts/Base/ChartAxis;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a(Lcom/artfulbits/aiCharts/Base/ChartAxis;Ljava/util/List;)V

    goto :goto_0
.end method

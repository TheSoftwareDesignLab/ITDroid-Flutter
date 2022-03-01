.class final Lcom/artfulbits/aiCharts/Base/ChartArea$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artfulbits/aiCharts/Base/ChartArea;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartAxis;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartArea;


# direct methods
.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartArea;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartArea$1;->a:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartAxis;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartArea$1;->a:Lcom/artfulbits/aiCharts/Base/ChartArea;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->setArea(Lcom/artfulbits/aiCharts/Base/ChartArea;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->setArea(Lcom/artfulbits/aiCharts/Base/ChartArea;)V

    :cond_1
    return-void
.end method

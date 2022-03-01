.class final Lcom/artfulbits/aiCharts/Base/ChartEngine$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artfulbits/aiCharts/Base/ChartEngine;-><init>()V
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
        "Lcom/artfulbits/aiCharts/Base/ChartTitle;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartEngine;


# direct methods
.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$1;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartTitle;

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartTitle;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$1;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartTitle;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartTitle;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$1;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    return-void
.end method

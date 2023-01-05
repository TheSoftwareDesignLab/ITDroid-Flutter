.class final Lcom/artfulbits/aiCharts/Base/ChartEngine$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartSeries;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartEngine;


# direct methods
.method synthetic constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine$c;-><init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;B)V

    return-void
.end method

.method private constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;B)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$c;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2

    const/4 v1, 0x0

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartSeries;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$c;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$c;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-static {v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->c(Lcom/artfulbits/aiCharts/Base/ChartEngine;)Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->setBaseAttributes(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    invoke-virtual {p2, v1}, Lcom/artfulbits/aiCharts/Base/ChartSeries;->setBaseAttributes(Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;)V

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$c;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->notify(I)V

    return-void
.end method

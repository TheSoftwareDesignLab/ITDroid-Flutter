.class public Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;
.super Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;


# instance fields
.field private a:Lcom/artfulbits/aiCharts/Base/ChartEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;-><init>()V

    return-void
.end method


# virtual methods
.method protected getChart()Lcom/artfulbits/aiCharts/Base/ChartEngine;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onChanged(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/artfulbits/aiCharts/Base/ChartPointAttributes;->onChanged(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartSeriesStyle;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    return-void
.end method

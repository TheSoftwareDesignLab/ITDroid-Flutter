.class final Lcom/artfulbits/aiCharts/Base/ChartEngine$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/Base/ChartEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener",
        "<",
        "Lcom/artfulbits/aiCharts/Base/ChartLegend;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartEngine;


# direct methods
.method synthetic constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartEngine$b;-><init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;B)V

    return-void
.end method

.method private constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartEngine;B)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$b;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2

    check-cast p1, Lcom/artfulbits/aiCharts/Base/ChartLegend;

    check-cast p2, Lcom/artfulbits/aiCharts/Base/ChartLegend;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$b;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    invoke-virtual {p1, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/artfulbits/aiCharts/Base/ChartLegend;->setChart(Lcom/artfulbits/aiCharts/Base/ChartEngine;)V

    :cond_1
    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartEngine$b;->a:Lcom/artfulbits/aiCharts/Base/ChartEngine;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartEngine;->invalidate(I)V

    return-void
.end method

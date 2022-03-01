.class final Lcom/artfulbits/aiCharts/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/IInvalidateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artfulbits/aiCharts/ChartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/ChartView;


# direct methods
.method constructor <init>(Lcom/artfulbits/aiCharts/ChartView;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/a;->a:Lcom/artfulbits/aiCharts/ChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInvalidate()V
    .locals 1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/a;->a:Lcom/artfulbits/aiCharts/ChartView;

    invoke-virtual {v0}, Lcom/artfulbits/aiCharts/ChartView;->invalidate()V

    return-void
.end method

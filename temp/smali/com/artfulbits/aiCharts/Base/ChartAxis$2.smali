.class final Lcom/artfulbits/aiCharts/Base/ChartAxis$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/artfulbits/aiCharts/Base/ChartCollection$IChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artfulbits/aiCharts/Base/ChartAxis;-><init>(Lcom/artfulbits/aiCharts/Base/ChartAxis$Position;)V
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
        "Lcom/artfulbits/aiCharts/Base/ChartAxis$Label;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/artfulbits/aiCharts/Base/ChartAxis;


# direct methods
.method constructor <init>(Lcom/artfulbits/aiCharts/Base/ChartAxis;)V
    .locals 0

    iput-object p1, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$2;->a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$2;->a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-static {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->a(Lcom/artfulbits/aiCharts/Base/ChartAxis;I)I

    iget-object v0, p0, Lcom/artfulbits/aiCharts/Base/ChartAxis$2;->a:Lcom/artfulbits/aiCharts/Base/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/artfulbits/aiCharts/Base/ChartAxis;->invalidate(I)V

    return-void
.end method

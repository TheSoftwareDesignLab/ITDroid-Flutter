.class Lcom/evancharlton/mileage/ChartActivity$1;
.super Ljava/lang/Object;
.source "ChartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/ChartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/ChartActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/ChartActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/evancharlton/mileage/ChartActivity$1;->this$0:Lcom/evancharlton/mileage/ChartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/evancharlton/mileage/ChartActivity$1;->this$0:Lcom/evancharlton/mileage/ChartActivity;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, v1, v2}, Lcom/evancharlton/mileage/ChartActivity;->zoom(D)V

    .line 44
    return-void
.end method

.class Lcom/evancharlton/mileage/Mileage$1;
.super Ljava/lang/Object;
.source "Mileage.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/Mileage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/Mileage;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/Mileage;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/evancharlton/mileage/Mileage$1;->this$0:Lcom/evancharlton/mileage/Mileage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/evancharlton/mileage/Mileage$1;->this$0:Lcom/evancharlton/mileage/Mileage;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/Mileage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 45
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/evancharlton/mileage/Mileage$1;->this$0:Lcom/evancharlton/mileage/Mileage;

    invoke-static {v1}, Lcom/evancharlton/mileage/Mileage;->access$000(Lcom/evancharlton/mileage/Mileage;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 46
    return-void
.end method

.class Lcom/evancharlton/mileage/BaseListActivity$1;
.super Ljava/lang/Object;
.source "BaseListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/BaseListActivity;->showDeleteDialog(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/BaseListActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/evancharlton/mileage/BaseListActivity$1;->this$0:Lcom/evancharlton/mileage/BaseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 178
    return-void
.end method

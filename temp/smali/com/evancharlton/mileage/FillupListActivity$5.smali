.class Lcom/evancharlton/mileage/FillupListActivity$5;
.super Ljava/lang/Object;
.source "FillupListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/FillupListActivity;->showDeleteDialog(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/FillupListActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/FillupListActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupListActivity$5;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 171
    return-void
.end method

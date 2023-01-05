.class Lcom/evancharlton/mileage/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/SettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/SettingsActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/SettingsActivity;I)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/evancharlton/mileage/SettingsActivity$2;->this$0:Lcom/evancharlton/mileage/SettingsActivity;

    iput p2, p0, Lcom/evancharlton/mileage/SettingsActivity$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/evancharlton/mileage/SettingsActivity$2;->this$0:Lcom/evancharlton/mileage/SettingsActivity;

    iget v1, p0, Lcom/evancharlton/mileage/SettingsActivity$2;->val$id:I

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/SettingsActivity;->removeDialog(I)V

    .line 75
    return-void
.end method

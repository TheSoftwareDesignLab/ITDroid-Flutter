.class Lcom/evancharlton/mileage/SettingsActivity$4;
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

.field final synthetic val$c:Landroid/database/Cursor;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/SettingsActivity;Landroid/database/Cursor;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/evancharlton/mileage/SettingsActivity$4;->this$0:Lcom/evancharlton/mileage/SettingsActivity;

    iput-object p2, p0, Lcom/evancharlton/mileage/SettingsActivity$4;->val$c:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/evancharlton/mileage/SettingsActivity$4;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 87
    const-wide/16 v1, -0x1

    .line 88
    .local v1, "id":J
    iget-object v3, p0, Lcom/evancharlton/mileage/SettingsActivity$4;->val$c:Landroid/database/Cursor;

    invoke-interface {v3, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/evancharlton/mileage/SettingsActivity$4;->val$c:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/evancharlton/mileage/SettingsActivity$4;->val$c:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/evancharlton/mileage/SettingsActivity$4;->val$prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "meta_field"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return-void
.end method

.class Lcom/evancharlton/mileage/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/SettingsActivity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/evancharlton/mileage/SettingsActivity$1;->this$0:Lcom/evancharlton/mileage/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/evancharlton/mileage/SettingsActivity$1;->this$0:Lcom/evancharlton/mileage/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/evancharlton/mileage/SettingsActivity$1;->this$0:Lcom/evancharlton/mileage/SettingsActivity;

    const-class v3, Lcom/evancharlton/mileage/AboutActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/evancharlton/mileage/FieldListActivity$1;
.super Ljava/lang/Object;
.source "FieldListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/FieldListActivity;->setupEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evancharlton/mileage/FieldListActivity;


# direct methods
.method constructor <init>(Lcom/evancharlton/mileage/FieldListActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/evancharlton/mileage/FieldListActivity$1;->this$0:Lcom/evancharlton/mileage/FieldListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/evancharlton/mileage/FieldListActivity$1;->this$0:Lcom/evancharlton/mileage/FieldListActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/evancharlton/mileage/FieldListActivity$1;->this$0:Lcom/evancharlton/mileage/FieldListActivity;

    const-class v3, Lcom/evancharlton/mileage/FieldActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/FieldListActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

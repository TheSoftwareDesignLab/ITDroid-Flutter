.class Lcom/evancharlton/mileage/FillupListActivity$3;
.super Ljava/lang/Object;
.source "FillupListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evancharlton/mileage/FillupListActivity;->initUI()V
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
    .line 97
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupListActivity$3;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "row":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupListActivity$3;->this$0:Lcom/evancharlton/mileage/FillupListActivity;

    invoke-static {v0, p4, p5}, Lcom/evancharlton/mileage/FillupListActivity;->access$300(Lcom/evancharlton/mileage/FillupListActivity;J)V

    .line 101
    return-void
.end method

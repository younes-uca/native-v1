import { createDrawerNavigator } from '@react-navigation/drawer';
import HomeScreen from '../component/HomeScreen';
import { NavigationContainer } from '@react-navigation/native';
import AboutScreen from '../component/AboutScreen';
import CustomDrawer from '../zynerator/CustomDrawer/CustomDrawer';
import Ionicons from 'react-native-vector-icons/Ionicons';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import PurchaseAdmin from "../component/admin/view/core/purchase/container/purchase-container-admin.component";
import PurchaseAdminView from "../component/admin/view/core/purchase/view/purchase-view-admin.component";
import PurchaseAdminList from "../component/admin/view/core/purchase/list/purchase-list-admin.component";
import PurchaseAdminCreate from "../component/admin/view/core/purchase/create/purchase-create-admin.component";
import PurchaseAdminEdit from "../component/admin/view/core/purchase/edit/purchase-edit-admin.component";


const Stack = createNativeStackNavigator();

function StackPurchaseAdmin() {
    return (
        <Stack.Navigator>
            <Stack.Screen
                name="PurchaseAdminList"
                component={PurchaseAdminList}
                options={{ headerShown: false }}
            />
            <Stack.Screen
                name="PurchaseUpdate"
                component={PurchaseAdminEdit}
            />
            <Stack.Screen
                name="purchaseDetails"
                component={PurchaseAdminView}
            />
        </Stack.Navigator>
    );
}

export default StackPurchaseAdmin;
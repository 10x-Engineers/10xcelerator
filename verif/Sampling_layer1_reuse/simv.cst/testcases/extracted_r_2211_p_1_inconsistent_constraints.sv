class c_2211_1;
    integer i = -367;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2211_1;
    c_2211_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z01xxx1010x010xx10zxx1z1x1xzx1xxzzxzzxzxzzzzxzxxzzxzxxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

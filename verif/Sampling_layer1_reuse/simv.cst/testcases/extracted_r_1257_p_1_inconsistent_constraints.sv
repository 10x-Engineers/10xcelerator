class c_1257_1;
    integer i = -208;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1257_1;
    c_1257_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zxxzz00xxx1zxx11z1z01xx0x1xzxzzzxxzxzzzzzzxzxxxxzxxzxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

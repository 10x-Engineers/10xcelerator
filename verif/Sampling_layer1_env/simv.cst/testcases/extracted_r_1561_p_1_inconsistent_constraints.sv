class c_1561_1;
    integer i = -259;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1561_1;
    c_1561_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00x0xzxxxzzzx1x10010x0zx1xzz1zzzxzxxzzzxzxxxzxzxxxzxxzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

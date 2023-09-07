class c_1497_1;
    integer i = -248;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1497_1;
    c_1497_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0z0zx00zz1zx1z00x1x110z1x011z1zxxzzzxxzzxzxzzxxxxxxzzxzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_652_1;
    integer i = -107;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_652_1;
    c_652_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z1zx10zxz110zxzx110x11zx1xxxxxxzzzzxzxzxzzxxzxxzzzzzzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

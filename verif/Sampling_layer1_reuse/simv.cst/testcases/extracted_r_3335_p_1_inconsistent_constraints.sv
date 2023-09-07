class c_3335_1;
    integer i = -554;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3335_1;
    c_3335_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0x1x1x0xz00xx0z1zz11zx0zzzz10xzxzxxxxzzxxzzxzxxzzzxzzxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

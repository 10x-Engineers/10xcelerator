class c_2551_1;
    integer i = -424;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2551_1;
    c_2551_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz01xz0xz0z1x11x1zx11xx1x01xz11zxxxzzzzzzzzxzxzzxzzzzzxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

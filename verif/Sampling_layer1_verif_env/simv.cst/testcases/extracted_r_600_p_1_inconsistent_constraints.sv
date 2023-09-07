class c_600_1;
    integer i = -98;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_600_1;
    c_600_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx1zx1xz0z0xzzzz110x0z0xzzz00xxxxzzzzzzxxxxzzxxzxzzxxzxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_318_1;
    integer i = -51;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_318_1;
    c_318_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010zz011z0z0z0zxzx10zx011zz0z1zzzzzxzzxxxxzzzzxzzzxxzzxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

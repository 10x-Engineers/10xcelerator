class c_3253_1;
    integer i = -541;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3253_1;
    c_3253_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011z0110011zzz0100z0xz0xx1zz1x1xzzxxxzxxzxxxxzzzzxxzxxxzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

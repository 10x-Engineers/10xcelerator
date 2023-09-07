class c_893_1;
    integer i = -147;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_893_1;
    c_893_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1z01zzxzz0z110x10zx0z1zx01x00xxxxxzzxxxxzzxzzxxxzzzxzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

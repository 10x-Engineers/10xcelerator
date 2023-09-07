class c_1293_1;
    integer i = -214;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1293_1;
    c_1293_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0010101x011x10z11110x00001zz1zxzzzxxxxxxzxzzxxxzxzzzzzxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

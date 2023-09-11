class c_2477_1;
    integer i = -411;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2477_1;
    c_2477_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01100zx1z1x10z10xx01x011zxzzxxxxxzzxxxzzzzxzzxzzzzxxxxzzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

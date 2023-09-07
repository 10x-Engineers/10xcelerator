class c_559_1;
    integer i = -92;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_559_1;
    c_559_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz11xz010z1zz1z1110x000xxxxx01zzxxxzzxzxzzzxzzzzzxxxzzxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

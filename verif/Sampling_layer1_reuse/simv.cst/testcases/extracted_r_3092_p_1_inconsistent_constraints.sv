class c_3092_1;
    integer i = -514;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3092_1;
    c_3092_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxx0xz1xx100x0z10z10xx01zzzz11xxzzxzxzxxxzzzxzzzxxxzxzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

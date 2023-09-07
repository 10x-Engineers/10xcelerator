class c_74_1;
    integer i = -11;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_74_1;
    c_74_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx1zzz0zx11110x00x110x0x0zzx01zxzxxxxxzzzzxxxzzxxxzxxzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

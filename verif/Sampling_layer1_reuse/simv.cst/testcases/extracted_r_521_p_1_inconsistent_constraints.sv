class c_521_1;
    integer i = -85;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_521_1;
    c_521_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzx0zz0z10x00111z1xz01z00zzzz01zxxxzxzzzzxzzzzzzzzxxzzzzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

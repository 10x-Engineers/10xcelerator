class c_1551_1;
    integer i = -257;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1551_1;
    c_1551_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx11100x01zzz011zx0z00zxzz000xxxxzzzzzzxxzzzxxxxxxxxxxxzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

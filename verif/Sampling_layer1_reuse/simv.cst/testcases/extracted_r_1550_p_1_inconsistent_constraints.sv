class c_1550_1;
    integer i = -257;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1550_1;
    c_1550_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx10zzzzz0x1xzxzx00z1111000x01zxxxxxxxxxxzxzxzxzzxzzxxzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

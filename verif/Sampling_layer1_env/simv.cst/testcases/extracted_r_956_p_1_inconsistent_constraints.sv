class c_956_1;
    integer i = -158;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_956_1;
    c_956_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0xzx1z1xz1011xzxzxx01xz10xx110zzzzxxxzzzxzzzxxzzxzxzzxzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

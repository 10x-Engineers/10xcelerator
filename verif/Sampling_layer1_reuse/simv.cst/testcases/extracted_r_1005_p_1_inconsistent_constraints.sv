class c_1005_1;
    integer i = -166;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1005_1;
    c_1005_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzx1z1011xzx0011x0zxx0zzz10xx0xzzxxxxxxzxxxxxzzxzzxzzzzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

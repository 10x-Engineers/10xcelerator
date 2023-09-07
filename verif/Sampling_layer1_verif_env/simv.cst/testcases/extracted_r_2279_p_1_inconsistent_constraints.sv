class c_2279_1;
    integer i = -378;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2279_1;
    c_2279_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0x1011zx1xzx1xx0x1zzzzxxx1zx1zxxzxzzzxzzxzzxzxzzzzxxxxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

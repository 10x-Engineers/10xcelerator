class c_1679_1;
    integer i = -278;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1679_1;
    c_1679_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx10xx0x11xzzx0z100zxxzxx0x1zzxxxzzzzzxzzzxzzxzxzzxxxxxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_454_1;
    integer i = -74;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_454_1;
    c_454_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzxxxxzzx0xz1zzz1101zzxzzx0zx0zzxzxxxxzxzzzzxzxxxxzzxzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

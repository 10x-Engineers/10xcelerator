class c_1918_1;
    integer i = -318;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1918_1;
    c_1918_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzx00zx1z1z1xz1zzxx01zx1z0zxz00zxzxxxzzxzzzzzxxzxzzzzzxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

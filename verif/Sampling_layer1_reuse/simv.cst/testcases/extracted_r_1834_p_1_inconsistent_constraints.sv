class c_1834_1;
    integer i = -304;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1834_1;
    c_1834_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z0xz0zx0xxzxxxzxz1z1zzx1011x1xzxxxzzxzzzxzzzzzxxxxzzxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

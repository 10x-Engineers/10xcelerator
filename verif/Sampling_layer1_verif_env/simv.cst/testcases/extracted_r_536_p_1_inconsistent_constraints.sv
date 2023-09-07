class c_536_1;
    integer i = -88;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_536_1;
    c_536_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxzz1011x0z00x010x1x1zz1zzz0xxzzxxzxxzxzxzxxxxzxzxxzzzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

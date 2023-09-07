class c_624_1;
    integer i = -102;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_624_1;
    c_624_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z110z001zxzz0z1zzxz1100zzz1x0xxxzxzzxxxxxxzxxxxxxxxzxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

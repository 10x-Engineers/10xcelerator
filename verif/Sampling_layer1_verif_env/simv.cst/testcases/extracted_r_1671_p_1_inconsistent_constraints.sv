class c_1671_1;
    integer i = -277;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1671_1;
    c_1671_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxzzx01xzzz11x111z110x1xz1xzz00xxzzxxxxxzxxxxzxxxzzxzxzzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
